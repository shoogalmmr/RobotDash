document.getElementById('forward').addEventListener('click', function() {
    move('forward');
});

document.getElementById('backward').addEventListener('click', function() {
    move('backward');
});

document.getElementById('left').addEventListener('click', function() {
    move('left');
});

document.getElementById('right').addEventListener('click', function() {
    move('right');
});

document.getElementById('stop').addEventListener('click', function() {
    stop();
    savePosition('stop');
});

let interval;
let element = document.getElementById('movable');

function move(direction) {
    clearInterval(interval);
    interval = setInterval(function() {
        let horizontal = parseInt(window.getComputedStyle(element).left) || 0;
        let vertical = parseInt(window.getComputedStyle(element).top) || 0;
        switch(direction) {
            case 'forward':
                element.style.top = (vertical - 5) + 'px';
                savePosition('forward');
                break;
            case 'backward':
                element.style.top = (vertical + 5) + 'px';
                savePosition('backward');
                break;
            case 'left':
                element.style.left = (horizontal - 5) + 'px';
                savePosition('left');
                break;
            case 'right':
                element.style.left = (horizontal + 5) + 'px';
                savePosition('right');
                break;
        }
    }, 100);
}

function stop() {
    clearInterval(interval);
}

function savePosition(command) {
    let horizontal = parseInt(window.getComputedStyle(element).left) || 0;
    let vertical = parseInt(window.getComputedStyle(element).top) || 0;

    let xhr = new XMLHttpRequest();
    xhr.open("POST", "save_position.php", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            console.log(xhr.responseText);
        }
    };
    xhr.send("horizontal=" + horizontal + "&vertical=" + vertical + "&command=" + command);
}

function getLastPosition() {
    let xhr = new XMLHttpRequest();
    xhr.open("GET", "get_last_position.php", true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            let position = JSON.parse(xhr.responseText);
            element.style.left = position.position_horizontal + 'px';
            element.style.top = position.position_vertical + 'px';
        }
    };
    xhr.send();
}

// عند تحميل الصفحة، الحصول على آخر موضع محفوظ
window.onload = function() {
    getLastPosition();
}
