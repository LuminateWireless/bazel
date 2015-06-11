package(default_visibility = ["//visibility:public"])

sh_binary(
    name = "2to3",
    srcs = ["2to3.sh"],
)

# We can't use py_binary rule here due to circular dependency
sh_binary(
    name = "plink",
    srcs = ["plink_wrapper.sh"],
    data = [
        "plink.py"
    ],
)

filegroup(
    name = "srcs",
    srcs = [
        # Tools are build from the workspace for tests.
        "2to3.sh",
        "plink.py",
        "plink_wrapper.sh",
        "BUILD",
    ],
)
