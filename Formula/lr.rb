# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lr < Formula
  desc "LoginRadius CLI to support LoginRadius API's and workflow!"
  homepage "https://github.com/loginradius/lr-cli"
  version "0.1.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/LoginRadius/lr-cli/releases/download/v0.1.0/lr_0.1.0_macOS_amd64.tar.gz"
    sha256 "13896015acc7c1f65453deeb56bd276d2ef6433487dc34223830a1aa7281e781"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/LoginRadius/lr-cli/releases/download/v0.1.0/lr_0.1.0_linux_amd64.tar.gz"
    sha256 "05d8d99ccb3419a0aa73bbc04105fbf62e8adc1a004ab86de3745d114796023a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/LoginRadius/lr-cli/releases/download/v0.1.0/lr_0.1.0_linux_armv6.tar.gz"
    sha256 "cc1e8f10aad20441b5ae5f3eff64ccc18d3968fd898179d070902b9385aca7b3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/LoginRadius/lr-cli/releases/download/v0.1.0/lr_0.1.0_linux_arm64.tar.gz"
    sha256 "87e2c7efe7eb4992fcca557f33d12d7441ec14bf12574a8b735cbc69b337e7fc"
  end

  def install
    bin.install "lr"
  end

  test do
    system "lr --help"
  end
end
