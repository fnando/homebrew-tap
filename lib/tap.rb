# frozen_string_literal: true

require "json"
require "open3"

# Helpers shared by the scripts in bin/.
module Tap
  ROOT = File.expand_path("..", __dir__)

  module_function

  def run(*cmd)
    out, err, status = Open3.capture3(*cmd)
    raise "#{cmd.join(' ')} failed: #{err.strip}" unless status.success?

    out
  end

  def description(repo)
    JSON.parse(run("gh", "repo", "view", repo, "--json", "description"))
        .fetch("description").to_s.strip
  end

  def latest_release(repo)
    JSON.parse(
      run("gh", "release", "view", "--repo", repo, "--json", "tagName,assets")
    )
  end

  # Formats a description as a (possibly multi-line) `desc` statement.
  def desc_lines(text)
    text = text.gsub("\\", "\\\\\\\\").gsub('"', '\"').gsub("\#{", "\\\#{")
    lines = wrap(text, 70)

    lines.map.with_index do |line, index|
      prefix = index.zero? ? "  desc " : "       "
      suffix = index == lines.size - 1 ? "" : " \\"
      %(#{prefix}"#{line}"#{suffix}\n)
    end
  end

  def wrap(text, width)
    text.split.each_with_object([+""]) do |word, lines|
      if lines.last.empty?
        lines.last << word
      elsif lines.last.size + word.size + 1 > width
        lines.last << " "
        lines << word.dup
      else
        lines.last << " " << word
      end
    end
  end
end
