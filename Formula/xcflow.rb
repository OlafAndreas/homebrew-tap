class Xcflow < Formula
  desc "Xcode Cloud workflows as JSON files in your repo"
  homepage "https://github.com/OlafAndreas/xcflow"
  url "https://github.com/OlafAndreas/xcflow/releases/download/v0.2.0/xcflow-0.2.0.tar.gz"
  sha256 "8d240479c101fd4e4d2fbe42fbfa266bc9eb47707aa2149f3e27e5e19d0529d4"
  license "MIT"

  depends_on macos: :sonoma

  def install
    bin.install "xcflow"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcflow --version").strip
  end
end
