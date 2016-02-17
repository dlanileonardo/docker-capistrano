# Capistrano Image to deploy Azk.

Example:

```js
capistrano: {
  image: {docker: "dlanileonardo/capistrano"},
  mounts: {
    "/azk/deploy/src":     path("."),
    "/azk/deploy/.ssh":    path("#{env.HOME}/.ssh"),
    "/azk/deploy/.config": persistent("deploy-config"),
  },
  workdir: "/azk/deploy/src",
  shell: "/bin/zsh"
}
```
