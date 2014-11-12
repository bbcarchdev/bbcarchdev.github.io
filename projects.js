$.getJSON('https://api.github.com/users/bbcarchdev/repos', function(data) {
    var container = $('#all-projects'), i, obj, first;
    if(!container.length) return;
    first = true;
    for(i in data)
    {
        obj = data[i];
        if(obj.fork) continue;
        if(first)
        {
            container.append('<h2>All projects</h2>');
            first = false;
        }
        var proj = $('<div class="project"><h3><a href="#">#</a></h3><p>#</p></div>');
        proj.find('h3>a').attr('href', obj.html_url);
        proj.find('h3>a').text(obj.name);
        proj.find('p').text(obj.description);
        container.append(proj);
    }
});
