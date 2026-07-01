class Catty < Formula
  desc "Personal assistant agent harness for Discord"
  homepage "https://github.com/buape/catty"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/buape/catty/releases/download/v0.1.0/catty-0.1.0-darwin-arm64.tar.gz"
      sha256 "63b1699927b48d9586b994614f7499c5ffc66042cc10df0daa9ebc4c8e9710b2"
    end

    on_intel do
      url "https://github.com/buape/catty/releases/download/v0.1.0/catty-0.1.0-darwin-amd64.tar.gz"
      sha256 "20189f90f1cdbf688aa6ddb36d9645ffc79ea3177bf617b4c469031b676b09b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/buape/catty/releases/download/v0.1.0/catty-0.1.0-linux-amd64.tar.gz"
      sha256 "0afa17bb9f1c200db87b1b5d264b19e23122f4c8d285615aa10487f821f881de"
    end
  end

  def install
    bin.install "catty"
  end

  test do
    assert_path_exists bin/"catty"
  end
end
