id: ComprehensiveWorkflow
class: Workflow
hints:
  ResourceRequirement:
    ramMin: 2048
    coresMin: 2
label: Comprehensive Workflow with Extended GUI Information
steps:
  docker_test_0:
    in:
      csv_file: docker_test_0_csv_file
      target_column: docker_test_0_target_column
      latitude_column: docker_test_0_latitude_column
      longitude_column: docker_test_0_longitude_column
    out:
    - interpolated_csv
    run: docker_test.cwl
  hello_world_1:
    in:
      message: docker_test_0/interpolated_csv
      success: hello_world_1_success
    out: []
    run: hello_world.cwl
inputs:
  hello_world_1_success: text
  docker_test_0_csv_file: text
  docker_test_0_target_column: text
  docker_test_0_latitude_column: text
  docker_test_0_longitude_column: text
outputs: []
cwlVersion: v1.2
$namespaces:
  author: team
  website_name: workflow-engine
