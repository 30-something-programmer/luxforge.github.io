---
layout: base
---

<div class="home">

  <h1 class="page-heading">{{ page.title }}</h1>

  {% if site.posts %}
    <h2>Posts</h2>
    <ul class="post-list">
      {% for post in site.posts %}
        <li>
          <span class="post-meta">{{ post.date | date: "%b %d, %Y" }}</span>
          <h3><a class="post-link" href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
        </li>
      {% endfor %}
    </ul>
  {% endif %}

  {% if site.incidents %}
    <h2>Incident Logs</h2>
    <ul class="incident-list">
      {% assign sorted_incidents = site.incidents | sort: "date" | reverse %}
      {% for incident in sorted_incidents %}
        <li>
          <span class="incident-meta">{{ incident.date | date: "%b %d, %Y – %H:%M" }}</span>
          <h3><a class="incident-link" href="{{ incident.url | relative_url }}">{{ incident.title }}</a></h3>
        </li>
      {% endfor %}
    </ul>
  {% endif %}

</div>
