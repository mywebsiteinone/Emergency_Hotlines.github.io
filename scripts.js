document.addEventListener("DOMContentLoaded", () => {
  const chatBox = document.getElementById("chat-box");
  const messageForm = document.getElementById("message-form");
  const messageInput = document.getElementById("message-input");

  messageForm.addEventListener("submit", (e) => {
    e.preventDefault();
    sendMessage();
  });

  function sendMessage() {
    const message = messageInput.value.trim();
    if (message !== "") {
      addMessage("user", message);
      messageInput.value = "";
      setTimeout(() => {
        let response;
        switch (message.toLowerCase()) {
          case "police":
            response =
              "Hello, can you please provide more details about the activity?";
            break;
          case "accident":
          case "suicide":
            response =
              "Can you describe the person or provide any identifying features?";
            break;
          case "motor and truck":
          case "tall dark, black hoodie":
            response =
              "Thank you for the details. Can you tell us your location?";
            break;
          case "canarvacanan, binalonan":
            response = "We will send a patrol car to monitor the area.";
            break;
          case "thanks":
            response =
              "You're welcome. Stay safe and don't hesitate to reach out if you need further help.";
            break;
          default:
            response = "Thank you for your message. We will respond shortly.";
        }
        addMessage("police", response);
      }, 1000); // Simulate response time
    }
  }

  function addMessage(sender, message) {
    const chatDiv = document.createElement("div");
    chatDiv.classList.add("chat", sender);
    chatDiv.innerHTML = `<p>${message}</p>`;
    chatBox.appendChild(chatDiv);
    chatBox.scrollTop = chatBox.scrollHeight;
  }
});
