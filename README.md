# Grype

## Description

A vulnerability scanner for container images and filesystems. Easily install the binary to try it out. Works with Syft, the powerful SBOM (software bill of materials) tool for container images and filesystems. [https://github.com/anchore/grype](https://github.com/anchore/grype)

## Features

- Install and uninstall via Chocolatey
- Supports 64-bit version

## Usage

### Direct

```cmd
choco install grype -y
```

### YAML (Foreman, puppetlabs/chocolatey module)

```yaml
grype:
  ensure: latest
  provider: chocolatey
```

or

```yaml
grype:
  ensure: latest
```
