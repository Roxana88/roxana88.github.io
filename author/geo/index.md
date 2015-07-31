---
layout: page
title: "Nosotros"
author: geo
---
{% assign author = site.authors[page.author] %}

<div class="row">
<div class="col-md-4">
<div class="author-image" style="border: 0">
    <img src="{{author.image}}" alt="{{author.name}}" title="{{author.name}}" />
</div>
</div>
<div class="col-md-8">
<div class="author-info">
    <h2 rel="author">{{author.name}}</h2>
    <p>{{author.bio}} <br />Estos son algunos de mis artículos en Tamales con Pasaporte:</p>
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
