namespace: hcm.Content.Library.test

operation:
    name: uiid

    inputs:
        - input_1
        - input_2

    java_action:
        gav: 'group artifact version'
        class_name: Uuid
        method_name: execute

    outputs:
        -output_1

    results:
        -SUCCESS: s(returnCode ==  '0')
        -FAILURE


namespace: io.cloudslang.test

operation:
    name: uuid

    python_action:
        script: |
            import uuid
            uuid = str(uuid.uudi1())

     outputs:
        -uuid s(uuid)

     results:
        -SUCCESS
