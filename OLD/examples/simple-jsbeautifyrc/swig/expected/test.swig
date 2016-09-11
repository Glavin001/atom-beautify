{# Comment #}

{# Unindented without and with HTML indentation#}
{% block blockname %}
    <section>
        <ul>
            <li>TestText1</li>
        </ul>
    </section>
    {% for foo in bar %}
        {% if condition %}
            <aside class="test1">
                TestText2
            </aside>
        {% else %}
            <div class="test2">
                TestText3
            </div>
        {% endif %}
    {% endfor %}
{% endblock %}

{# On the same line #}

{% set name = value %}

{% include "file" with context only %}

{% extends "file" %}

{# Indented wrong #}

{% parent %}

{% import "file" as varname %}

{% macro name args %}
    TestText4
{% endmacro %}

{% tag %}
    TestText5
{% end %}

{% autoescape on "js" %}
    TestText6
{% endautoescape %}