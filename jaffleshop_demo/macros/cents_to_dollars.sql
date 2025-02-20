{# A basic example for a project-wide macro to cast a column uniformly #}

{% macro cents_to_dollars(column_name) -%}
    {{return(adapter.dispatch('cents_to_dollars')(column_name))}}
{%- endmacro %}

{% macro default__cents_to_dollars(column_name) -%}
    ({{ column_name }} / 100)
{%- endmacro %}

{% macro postgres__cents_to_dollars(column_name) -%}
    ({{ column_name }} / 100)
{%- endmacro %}

{% macro bigquery__cents_to_dollars(column_name) %}
    round(cast(({{ column_name }} / 100)), 2)
{% endmacro %}
