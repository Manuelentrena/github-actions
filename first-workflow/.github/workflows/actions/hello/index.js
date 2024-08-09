const core = require('@actions/core')
const github = require('@actions/github')

try {
    core.debug('Debug Message');
    core.warning('Warning Message');
    core.error('Error Message');
    
    const whoToGreet  = core.getInput('who_to_greet', { required: true })
    
    console.log(`Hello ${whoToGreet}`)
    
    const time = new Date().toDateString;
    core.setOutput("time", time)

    core.exportVariable("HELLO_TIME", time);

    core.startGroup("Loggin github context");
    console.log(JSON.stringify(github.context, null, 2));
    core.endGroup();

} catch (error) {
    // Fail the workflow step if an error occurs
    core.setFailed(error.message)
}
