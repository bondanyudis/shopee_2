package Biller;


import com.intuit.karate.KarateOptions;
import cucumber.api.CucumberOptions;

/**
 *
 *
 * @author pthomas3
 */
@KarateOptions(tags = {"@artala_bridging"})
public class DemoTest extends DemoTestParallel {
    // this class will automatically pick up all *.feature files
    // in src/test/java/demo and even recurse sub-directories
    // even though the class name ends with 'Test', the maven 'pom.xml'
    // has set 'DemoTestParallel' to be the default 'test suite' for the whole project
}
