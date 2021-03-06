# This file is generated by sync-deps, do not edit!
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def default_github_callback(name, repository, commit, sha256):
    repo_name = repository.split("/")[-1]
    _maybe(
        http_archive,
        name = name,
        sha256 = sha256,
        strip_prefix = "%s-%s" % (repo_name, commit),
        urls = ["https://github.com/%s/archive/%s.zip" % (repository, commit)],
    )

def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)
