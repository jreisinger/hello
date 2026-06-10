# Hello

Hello is a hello world Go program. But the program is not important. This repo
is about the GitHub actions, the GitHub's event-driven CI/CD platform. See the
`.github/workflows` folder.

To create a new release:

```
$ git tag v0.0.1
$ git push origin v0.0.1
```

... this will trigger a [workflow](https://github.com/jreisinger/hello/actions) that will:

1. Test and lint the code with multiple Go versions and operating systems.
2. Create a binary [release](https://github.com/jreisinger/hello/releases) for multiple operating systems and architectures. 
3. Build and push a multi-architecture docker [image](https://github.com/jreisinger/hello/pkgs/container/hello) (called package on GitHub).

To run the released docker image:

```
$ docker run ghcr.io/jreisinger/hello:0.0.1
```
