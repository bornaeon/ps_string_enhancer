# frozen_string_literal: true

require_relative "ps_string_enhancer/version"

module PsStringEnhancer
  class Error < StandardError; end

  def self.word_count(word)
    word.split.length
  end

  def self.polindrome?(word)
    changed = word.downcase.gsub(/\W/, "")
    changed == changed.reverse
  end
end
