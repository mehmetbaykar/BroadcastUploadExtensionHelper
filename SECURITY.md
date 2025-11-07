# Security Policy

## Repository Security for Public Access

This repository is **safe to be public**. Here's why:

### Workflow Security

The GitHub Actions workflow (`.github/workflows/ci.yml`) is secure for public repositories:

1. **Trigger Restrictions**: 
   - Workflows only trigger on `push` to the `main` branch and on `pull_request` events
   - Only repository maintainers can push directly to `main`
   - Pull requests from external contributors require approval before workflows run (GitHub's default security for public repos)

2. **No Secrets or Credentials**: 
   - No `secrets.*` references in workflows
   - No API keys, tokens, or credentials stored in the repository
   - No sensitive environment variables

3. **Runner Security**:
   - Uses GitHub-hosted runners (`macos-latest`)
   - External contributors **cannot** trigger self-hosted runners
   - Each workflow run is isolated in a fresh virtual environment

4. **Trusted Actions Only**:
   - Uses official GitHub action: `actions/checkout@v3`
   - Uses community-maintained action with good reputation: `sersoft-gmbh/xcodebuild-action@v3`

### Code Security

- No hardcoded secrets, API keys, or credentials in source code
- No sensitive files (`.p12`, `.pem`, `.mobileprovision`, etc.) in repository
- Clean git history with no accidentally committed secrets
- Simple, focused library with no external runtime dependencies

### Best Practices Implemented

- ✅ `.gitignore` file to prevent accidental commits of sensitive data
- ✅ No secrets in code or configuration
- ✅ Workflow permissions follow principle of least privilege
- ✅ All dependencies are from trusted sources

## For Users of This Library

This is a helper library for iOS ReplayKit Broadcast Upload Extensions. It:
- Provides convenience methods for ending broadcasts
- Has no network access or external data transmission
- Does not collect, store, or transmit any user data
- Works entirely within the iOS ReplayKit framework

## Reporting Security Issues

If you discover a security vulnerability, please:

1. **Do NOT** open a public issue
2. Email the maintainer directly (see GitHub profile)
3. Include:
   - Description of the vulnerability
   - Steps to reproduce
   - Potential impact
   - Suggested fix (if any)

We will respond within 48 hours and work with you to address the issue.

## Security Updates

This repository follows semantic versioning. Security updates will be:
- Released as patch versions for critical issues
- Documented in release notes
- Announced via GitHub releases

## Additional Resources

- [GitHub Actions Security Best Practices](https://docs.github.com/en/actions/security-guides/security-hardening-for-github-actions)
- [Swift Package Manager Security](https://swift.org/package-manager/)
