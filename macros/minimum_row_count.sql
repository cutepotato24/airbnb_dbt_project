--here we are testing a model, so there is no column_name parameter but instead
--direct min_row_count parameter

{% test minimum_row_count(model, min_row_count) %}
{{ config(severity = 'warn') }}

SELECT
    COUNT(*) as cnt
FROM
    {{ model }}
HAVING
    COUNT(*) < {{ min_row_count }}
{% endtest %}

