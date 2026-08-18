fetch('./Detail.json')
    .then(response => response.json())
    .then(data => {
    document.getElementById('user-image').src = data.image;
    document.getElementById('user-name').textContent = data.name;
    document.getElementById('user-profession').textContent = data.profession;
    document.getElementById('user-about').textContent = data.about;
    document.getElementById('user-years').textContent = data.years + (data.years === 1 ? ' Year' : ' Years');
    
    const link = document.getElementById('user-website');
    link.href = data.website.startsWith('http') ? data.website : 'https://' + data.website;
    })
    .catch(error => console.error('Error fetching JSON:', error));