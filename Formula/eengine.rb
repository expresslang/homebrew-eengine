# frozen_string_literal: true

class Eengine < Formula
  desc "Express Engine - EXPRESS language parser and interpreter"
  homepage "https://github.com/expresslang/eengine-releases"
  version "5.0.18"
  license "BSD-2-Clause"

  on_macos do
    on_arm do
      url "https://github.com/expresslang/eengine-releases/releases/download/eeng-5.0.18/eengine-5.0.18-mac-arm64-sbcl"
      sha256 "6f83f236656b74e1c78bdaa122792a2bab819eba37e698fc1683e7758b71b462"
    end

    on_intel do
      url "https://github.com/expresslang/eengine-releases/releases/download/eeng-5.0.18/eengine-5.0.18-mac-x86-64-sbcl"
      sha256 "d84c267e9fd1ad6ef9789a8b254d4c32b03c490decffa407bf709fb3b357bcfe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/expresslang/eengine-releases/releases/download/eeng-5.0.18/eengine-5.0.18-lnx-x86-64-sbcl"
      sha256 "1fc11f61f76d888a20fe106ddc1ffbcb192c9655535254f2078136b17081b9d1"
    end

    on_arm do
      url "https://github.com/expresslang/eengine-releases/releases/download/eeng-5.0.18/eengine-5.0.18-lnx-arm64-sbcl"
      sha256 "1d906e2bd6ce2e194f066490ede8a2336a5ea22dd09df5a8edfb98aae82ba58b"
    end
  end

  def install
    bin.install Dir["*"].first => "eengine"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eengine --version 2>&1", 0)
  end
end
