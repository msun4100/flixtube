# MSA Practice; starting with Ch.6

This example uses Terraform to create a private container registry in Azure.

Run this example using:

```bash
cd scripts
# terraform init
terraform apply
```

## Fix: Warning: Version constraints inside provider configuration blocks are deprecated

[https://thomasthornton.cloud/2023/02/21/terraform-warning-version-constraints-inside-provider-configuration-blocks-are-deprecated-fix/](https://thomasthornton.cloud/2023/02/21/terraform-warning-version-constraints-inside-provider-configuration-blocks-are-deprecated-fix/)

location 수정

```diff
resource "azurerm_resource_group" "flixtube" {
  name     = "flixtube"
-  location = "West US"
+  location = "koreasouth"
}
```

기존 코드로 warning 메시지 노출 후 terraform init 커맨드가 실행은 되지만 terraform apply 커맨드에서 에러가 발생 위 링크 처럼 provider.tf 코드를 수정
