class StackSync < Formula
  desc "A CLI tool for managing stacks"
  homepage "https://github.com/kyeotic/stack-sync"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kyeotic/stack-sync/releases/download/v#{version}/stack-sync-aarch64-apple-darwin.tar.gz"
      sha256 "cae05372a2bf0e9018275843154bb9360bfc38b26bfdf9df7bcd47e258d54f69"
    else
      url "https://github.com/kyeotic/stack-sync/releases/download/v#{version}/stack-sync-x86_64-apple-darwin.tar.gz"
      sha256 "939de6f9ea82944d6c39128266be65bd12189c2d7bd4fa480083f25d99332757"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kyeotic/stack-sync/releases/download/v#{version}/stack-sync-x86_64-unknown-linux-musl.tar.gz"
      sha256 "520de5fb0c01bbdbfec879707ba3e78a15e77ccc4f09c143f9b61be8ec7f0b0f"
    end
  end

  def install
    bin.install "stack-sync"
  end

  test do
    system "#{bin}/stack-sync --version"
  end
end