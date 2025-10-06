class Guepard < Formula
  desc "Guepard CLI (guepard) - Git, but for Data"
  homepage "https://www.guepard.run"
  url "https://github.com/Guepard-Corp/guepard-cli/releases/download/v\${VERSION}/guepard-cli-v\${VERSION}-macos-arm64.tar.gz"
  version "\${VERSION}"
  sha256 "ce2f2b086481989ad759ae094cf0b4591b130372f0bb8ca38049ac97ca413d8b"
  license "Guepard (c) 2025"

  on_macos do
    on_arm do
      url "https://github.com/Guepard-Corp/guepard-cli/releases/download/v\${VERSION}/guepard-cli-v\${VERSION}-macos-arm64.tar.gz"
      sha256 "ce2f2b086481989ad759ae094cf0b4591b130372f0bb8ca38049ac97ca413d8b"
    end
    on_intel do
      url "https://github.com/Guepard-Corp/guepard-cli/releases/download/v\${VERSION}/guepard-cli-v\${VERSION}-macos-amd64.tar.gz"
      sha256 "7ff94b1d73a8c07b1e4fc9ab9da5f369bcc31bbad6beb2c9db0cb1376e907a4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Guepard-Corp/guepard-cli/releases/download/v\${VERSION}/guepard-cli-v\${VERSION}-linux-arm64.tar.gz"
      sha256 "255e017731747a729227d268f76196386c87cd593268aea654a023d3cc78e635"
    end
    on_intel do
      url "https://github.com/Guepard-Corp/guepard-cli/releases/download/v\${VERSION}/guepard-cli-v\${VERSION}-linux-amd64.tar.gz"
      sha256 "7ef51112d8bf4d82e3ee68d6eb360df78a1f696f149040684212a42d29a12dde"
    end
  end

  def install
    bin.install "guepard"
  end

  test do
    system "#{bin}/guepard", "--version"
  end
end