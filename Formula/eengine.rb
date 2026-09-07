# frozen_string_literal: true

class Eengine < Formula
  desc "Express Engine - EXPRESS language parser and interpreter"
  homepage "https://github.com/expresslang/eengine-releases"
  version "5.2.6"
  license "BSD-2-Clause"

  on_macos do
    on_arm do
      url "https://github.com/expresslang/eengine-releases/releases/download/eeng-5.2.6/eengine-5.2.6-mac-arm64-sbcl"
      sha256 "e5bd12722a2bd5f35d3246f0176c1b8dd0c4ca2eae10acceac519be17cfa8d0a"
    end

    on_intel do
      url "https://github.com/expresslang/eengine-releases/releases/download/eeng-5.2.6/eengine-5.2.6-mac-x86-64-sbcl"
      sha256 "db00416234ee8812576c1b87d87bc510079448fbbd8354111c00ae7c4a5b6213"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/expresslang/eengine-releases/releases/download/eeng-5.2.6/eengine-5.2.6-lnx-x86-64-sbcl"
      sha256 "9a9ef53186d048cc77b079b6f709f193ef7efe7f49f4825fa49180718868fa75"
    end

    on_arm do
      url "https://github.com/expresslang/eengine-releases/releases/download/eeng-5.2.6/eengine-5.2.6-lnx-arm64-sbcl"
      sha256 "f28c20ac3768a491eba0eb6abce60589586e29421c1cc049ea969941df079ed3"
    end
  end

  def install
    bin.install Dir["*"].first => "eengine"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eengine --version 2>&1", 0)
  end
end
