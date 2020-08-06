# WARNING: Only use stdlib imports!
import hashlib
from argparse import ArgumentParser
from pathlib import Path
from string import Template


def cli():
    parser = ArgumentParser()
    parser.add_argument("--version", required=True)
    parser.add_argument("--archive-file", required=True, type=Path)
    parser.add_argument("--template-file", required=True, type=Path)
    parser.add_argument("--target-file", required=True, type=Path)

    args = parser.parse_args()
    generate(
        version=args.version,
        archive_file=args.archive_file,
        template_file=args.template_file,
        target_file=args.target_file,
    )


def generate(
    version: str, archive_file: Path, template_file: Path, target_file: Path
) -> None:
    checksum = hashlib.sha256(archive_file.read_bytes()).hexdigest()

    template = Template(template_file.read_text())
    target_file.write_text(template.substitute(version=version, checksum=checksum))


if __name__ == "__main__":
    cli()
