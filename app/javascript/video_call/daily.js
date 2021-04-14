const initChatroomCable = () => {
    const messagesContainer = document.getElementById('messages');
    if (messagesContainer) {
      // console.log("hllo")
      const id = messagesContainer.dataset.chatroomId;
  
      consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
        received(data) {
          messagesContainer.insertAdjacentHTML('beforeend', data);
        }
      });
    }
}



let callFrame = () => {
    callFrame = window.DailyIframe.createFrame();
    callFrame.join({ url: 'https://codebuddies.daily.co/Test'});
};


const initVideoCall = () => {
    const callButton = document.getElementById("callbutton");
    callButton.addEventListener("click", (event) => {
        callFrame()
    });
};

const initEndVideoCall = () => {
  const callButton = document.getElementById("callbutton");
  callButton.addEventListener("click", (event) => {
      callFrame()
  });
};

export {initVideoCall, initEndVideoCall}