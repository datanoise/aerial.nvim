local util = require("tests.test_util")

describe("treesitter ruby", function()
  it("parses all symbols correctly", function()
    util.test_file_symbols("treesitter", "./tests/treesitter/ruby_test.rb", {
      {
        kind = "Module",
        name = "Mod",
        level = 0,
        lnum = 1,
        col = 0,
        end_lnum = 7,
        end_col = 3,
        children = {
          {
            kind = "Class",
            name = "Cl_1",
            level = 1,
            lnum = 2,
            col = 2,
            end_lnum = 4,
            end_col = 5,
            children = {
              {
                kind = "Method",
                name = "meth_1",
                level = 2,
                lnum = 3,
                col = 4,
                end_lnum = 3,
                end_col = 20,
              },
            },
          },
          {
            kind = "Method",
            name = "meth_2",
            level = 1,
            lnum = 6,
            col = 2,
            end_lnum = 6,
            end_col = 18,
          },
        },
      },
      {
        kind = "Method",
        name = "describe UnitTest",
        level = 0,
        lnum = 9,
        col = 0,
        end_lnum = 16,
        end_col = 3,
        children = {
          {
            kind = "Method",
            name = "before",
            level = 1,
            lnum = 10,
            col = 2,
            end_lnum = 11,
            end_col = 5,
          },
          {
            kind = "Method",
            name = "after",
            level = 1,
            lnum = 12,
            col = 2,
            end_lnum = 13,
            end_col = 5,
          },
          {
            kind = "Method",
            name = "it should describe the test",
            level = 1,
            lnum = 14,
            col = 2,
            end_lnum = 15,
            end_col = 5,
          },
        },
      },
      {
        kind = "Method",
        name = "namespace rake_namespace",
        level = 0,
        lnum = 18,
        col = 0,
        end_lnum = 24,
        end_col = 3,
        children = {
          {
            kind = "Method",
            name = "task :simple_task",
            level = 1,
            lnum = 19,
            col = 2,
            end_lnum = 19,
            end_col = 29,
          },
          {
            kind = "Method",
            name = "task inline_task",
            level = 1,
            lnum = 20,
            col = 2,
            end_lnum = 20,
            end_col = 43,
          },
          {
            kind = "Method",
            name = "task rake_task",
            level = 1,
            lnum = 21,
            col = 2,
            end_lnum = 21,
            end_col = 37,
          },
          {
            kind = "Method",
            name = "multitask parallel_prereqs",
            level = 1,
            lnum = 22,
            col = 2,
            end_lnum = 22,
            end_col = 58,
          },
          {
            kind = "Method",
            name = "file create_file",
            level = 1,
            lnum = 23,
            col = 2,
            end_lnum = 23,
            end_col = 30,
          },
        },
      },
      {
        kind = "Module",
        name = "Long::Mod::Name",
        level = 0,
        lnum = 27,
        col = 0,
        end_lnum = 30,
        end_col = 3,
        children = {
          {
            kind = "Class",
            name = "Long::Class::Name",
            level = 1,
            lnum = 28,
            col = 2,
            end_lnum = 29,
            end_col = 5
          }
        }
      }
    })
  end)
end)
