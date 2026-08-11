using Workerd = import "/workerd/workerd.capnp";

const config :Workerd.Config = (
  services = [
    (name = "main", worker = .mainWorker),
  ],
  sockets = [
    (
      name = "http",
      address = "127.0.0.1:8788",
      http = (),
      service = "main",
    ),
  ],
);

const mainWorker :Workerd.Worker = (
  modules = [
    (name = "worker.js", esModule = embed "worker.bundle.js"),
  ],
  compatibilityDate = "2026-08-11",
);
