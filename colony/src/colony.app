{application, colony,
 [{description, "colony"},
  {vsn, "0.01"},
  {modules, [
    colony,
    colony_app,
    colony_sup,
    colony_web,
    colony_deps
  ]},
  {registered, []},
  {mod, {colony_app, []}},
  {env, []},
  {applications, [kernel, stdlib, crypto]}]}.
