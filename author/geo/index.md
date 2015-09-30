---
layout: page
title: "Nosotros - Geo Perez"
author: geo
---
{% assign author = site.authors[page.author] %}

<div class="row">
<div class="col-md-4">
<div class="author-image" style="border: 0">
    <img src="{{author.image}}" title="{{author.name}}" style="margin: auto" />
</div>
</div>
<div class="col-md-8">
<div class="author-info">
    <p><strong rel="author">{{author.name}}</strong> - {{author.bio}}</p>
    <p>Estos son algunos de mis artículos en Tamales con Pasaporte:</p>
</div>
</div>
</div>

<ul class="posts">
{% for post in site.posts %}
    {% if post.author contains page.author %}
        <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endif %}
{% endfor %}
</ul>
