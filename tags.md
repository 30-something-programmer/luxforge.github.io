---
layout: base
title: "Browse Tags"
permalink: /tags/
---

<ul class="tag-cloud">
  {% for tag in site.tags %}
    {% assign count = tag[1] | size %}
    <li>
      <a href="/tags/{{ tag[0] | slugify }}/">
        {{ tag[0] }}
        <span class="count">({{ count }})</span>
      </a>
    </li>
  {% endfor %}
</ul>