---
layout: page
title: "Nostros"
---
{% assign author = site.authors["geo"] %}

<div class="author-image" style="border: 0">
    <img src="{{author.image}}" alt="{{author.name}}" title="{{author.name}}" />
</div>
<div class="author-info">
    <h2 rel="author">{{author.name}}</h2>
    <p>{{author.bio}} Estos son algunos de mis artículos en Tamales con Pasaporte:</p>
</div>

<ul class="posts">
{% for post in site.posts %}
    {% if post.author contains 'geo' %}
        <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endif %}
{% endfor %}
</ul>
