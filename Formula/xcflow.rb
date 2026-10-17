class Xcflow < Formula
  desc "Xcode Cloud workflows as JSON files in your repo"
  homepage "https://github.com/OlafAndreas/xcflow"
  url "https://github.com/OlafAndreas/xcflow/releases/download/v0.2.3/xcflow-0.2.3.tar.gz"
  sha256 "d6b779060950c30a4013103fa9f761c9840d53bd3c3dfc3a34fe38ca8797a0ff"
  license "MIT"

  depends_on macos: :sonoma

  def install
    bin.install "xcflow"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcflow --version").strip
  end
end
