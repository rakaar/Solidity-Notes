sampleContract.events
  .eventName()
  .on('data', event => {
    let zombie = event.returnValues;
  })
  .on('error', err => {
    console.log(err);
  });
