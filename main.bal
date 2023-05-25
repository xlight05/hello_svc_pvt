import ballerina/http;
import ballerinacentral/test_pvt_util;
service / on new http:Listener(9090) {

    resource function get albums() returns string {
        test_pvt_util:test();
        return "hello world";
    }
}
