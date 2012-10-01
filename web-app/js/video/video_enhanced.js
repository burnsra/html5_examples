var myVideo = document.getElementById("video1"); 

function playPause() {
    if (myVideo.paused)
        myVideo.play();
    else 
        myVideo.pause();
} 

function makeBig() {
    myVideo.width=640;
}

function makeSmall() {
    myVideo.width=240;
}

function makeNormal() {
    myVideo.width=480;
}