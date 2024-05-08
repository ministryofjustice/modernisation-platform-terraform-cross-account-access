package main

import (
	"regexp"
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestTerraformCrossAccountAccess(t *testing.T) {
	t.Parallel()

	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "./unit-test",
	})

	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)

	role_arn := terraform.Output(t, terraformOptions, "role_arn")

	assert.Regexp(t, regexp.MustCompile(`^arn:aws:iam::\d{12}:role/CrossAccountAccess`), role_arn)

}
