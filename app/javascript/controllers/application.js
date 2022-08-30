import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

// import "@rails/actiontext";
// import { AttachmentUpload } from "@rails/actiontext/app/javascript/actiontext/attachment_upload"

// addEventListener("trix-attachment-add", event => {
//   const { attachment, target } = event

//   if (attachment.file) {
//     const upload = new AttachmentUpload(attachment, target)
//     upload.start()
//   }
// })
