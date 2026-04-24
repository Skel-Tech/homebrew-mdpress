# typed: false
# frozen_string_literal: true

# This formula is automatically updated by GoReleaser.
# Do not edit manually.

class Mdpress < Formula
  desc "Turn your Markdown and AI output into branded PDFs"
  homepage "https://github.com/Skel-Tech/mdpress"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Skel-Tech/mdpress/releases/download/v#{version}/mdpress_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      url "https://github.com/Skel-Tech/mdpress/releases/download/v#{version}/mdpress_#{version}_darwin_amd64.tar.gz"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Skel-Tech/mdpress/releases/download/v#{version}/mdpress_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      url "https://github.com/Skel-Tech/mdpress/releases/download/v#{version}/mdpress_#{version}_linux_amd64.tar.gz"
    end
  end

  def install
    bin.install "mdpress"
  end

  test do
    system "#{bin}/mdpress", "version"
  end
end
