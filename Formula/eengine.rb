# frozen_string_literal: true

class Eengine < Formula
  desc "Express Engine - EXPRESS language parser and interpreter"
  homepage "https://github.com/expresslang/eengine-releases"
  version "5.0.0"
  license "BSD-2-Clause"

  on_macos do
    on_arm do
      url "https://github.com/expresslang/eengine-releases/releases/download/eeng-5.0.0/eengine-5.0.0-mac-arm64-sbcl"
      sha256 "453f4c38d95f025a27f7daf01e64f996889b772a433456fc22f68378e506ba09"
    end

    on_intel do
      url "https://github.com/expresslang/eengine-releases/releases/download/eeng-5.0.0/eengine-5.0.0-mac-x86-64-sbcl"
      sha256 "db9935f8541c2b7aaf08dc5ef91a953d4d57c5a5f912a80eecf82be1efc042a9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/expresslang/eengine-releases/releases/download/eeng-5.0.0/eengine-5.0.0-lnx-x86-64-sbcl"
      sha256 "5ba96f151616c92f43ac90a4a38cf450b90bded222d12962b13484f93f685c60"
    end

    on_arm do
      url "https://github.com/expresslang/eengine-releases/releases/download/eeng-5.0.0/eengine-5.0.0-lnx-arm64-sbcl"
      sha256 "0a542c3a2027edaa994b601295e4514ecce27cfc45022894947b3d17af333343"
    end
  end

  def install
    bin.install Dir["*"].first => "eengine"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eengine --version 2>&1", 0)
  end
end
