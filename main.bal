import ballerina/http;
import ballerinacentral/bala_parser;
service / on new http:Listener(9090) {

    resource function get albums() returns string|error {
        string baloPath = "path";
        byte[] balo = baloPath.toBytes();
        _ = check bala_parser:parse(baloPath, balo);
        return "hello world";
    }
}
