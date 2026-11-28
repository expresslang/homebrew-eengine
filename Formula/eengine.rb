# frozen_string_literal: true

class Eengine < Formula
  desc "Express Engine - EXPRESS language parser and interpreter"
  homepage "https://github.com/expresslang/eengine-releases"
  version "5.2.9"
  license "BSD-2-Clause"

  on_macos do
    on_arm do
      url "https://github.com/expresslang/eengine-releases/releases/download/eeng-5.2.9/eengine-5.2.9-mac-arm64-sbcl"
      sha256 "f1d186f1f887718a5e6ee7c3ba0f9194f1e5bb876770df5d8598140f2529776d"
    end

    on_intel do
      url "https://github.com/expresslang/eengine-releases/releases/download/eeng-5.2.9/eengine-5.2.9-mac-x86-64-sbcl"
      sha256 "82c5fa48dccedfea51687d71206591492242b8563eb0a395a016b9c2a730cc35"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/expresslang/eengine-releases/releases/download/eeng-5.2.9/eengine-5.2.9-lnx-x86-64-sbcl"
      sha256 "5850283953d62506dd6e1ceb1c74f58f43371c7e9073f13b33e4360718056462"
    end

    on_arm do
      url "https://github.com/expresslang/eengine-releases/releases/download/eeng-5.2.9/eengine-5.2.9-lnx-arm64-sbcl"
      sha256 "6d0e803fc3414ed1a8835eeb8fbaa40e5db3dc5f2b547ac7162d1282f9b2be7a"
    end
  end

  def install
    bin.install Dir["*"].first => "eengine"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eengine --version 2>&1", 0)
  end
end
