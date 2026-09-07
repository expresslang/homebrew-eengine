# frozen_string_literal: true

class Eengine < Formula
  desc "Express Engine - EXPRESS language parser and interpreter"
  homepage "https://github.com/expresslang/eengine-releases"
  version "5.2.8"
  license "BSD-2-Clause"

  on_macos do
    on_arm do
      url "https://github.com/expresslang/eengine-releases/releases/download/eeng-5.2.8/eengine-5.2.8-mac-arm64-sbcl"
      sha256 "423ecb5bbe401b1c720c526619e4f03f9e64e0dc0fdd134100c35cbfc5e49384"
    end

    on_intel do
      url "https://github.com/expresslang/eengine-releases/releases/download/eeng-5.2.8/eengine-5.2.8-mac-x86-64-sbcl"
      sha256 "bc3b73a060b138756f3277affe1ff85de38288de586ec4816fb4e5f6e124df17"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/expresslang/eengine-releases/releases/download/eeng-5.2.8/eengine-5.2.8-lnx-x86-64-sbcl"
      sha256 "87e9c28f12c926cead36b1126305d62fe50d9dabb401aa17d196d34da5a61bf1"
    end

    on_arm do
      url "https://github.com/expresslang/eengine-releases/releases/download/eeng-5.2.8/eengine-5.2.8-lnx-arm64-sbcl"
      sha256 "e8e4f3d31fd387c702681d6c0636b867e7eb577bf92676cf58ee7188ee6cd548"
    end
  end

  def install
    bin.install Dir["*"].first => "eengine"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eengine --version 2>&1", 0)
  end
end
