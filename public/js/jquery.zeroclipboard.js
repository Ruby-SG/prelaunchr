// var client = new ZeroClipboard( $("#click-to-copy"), {
//               moviePath: "/ZeroClipboard.swf",
//               debug: false
// } );
// client.on( "ready", function( readyEvent ) {
//   // alert( "ZeroClipboard SWF is ready!" );

//   client.on( "aftercopy", function( event ) {
//     alert("Copied to clipboard.");
//   } );
// } );

new Clipboard('#click-to-copy');