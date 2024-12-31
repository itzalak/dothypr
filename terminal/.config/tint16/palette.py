from dataclasses import dataclass
from typing import List, Dict, Any


@dataclass
class Palette:
    name: str
    author: str
    colors: List[str]
    foreground: str
    background: str

    def to_json(self) -> Dict[str, Any]:
        """Convert the color scheme instance to JSON format."""
        return {
            "name": self.name,
            "author": self.author,
            "color": self.colors,
            "background": self.background,
            "foreground": self.foreground,
        }

    def to_dict(self):
        return {
            "name": self.name,
            "author": self.author,
            "background": self.background,
            "foreground": self.foreground,
            **{f"color{i}": color for i, color in enumerate(self.colors)},
        }

    @staticmethod
    def from_json(json_data: Dict[str, Any]) -> "Palette":
        return Palette(
            name=json_data["name"],
            author=json_data["author"],
            colors=json_data["color"],
            foreground=json_data["foreground"],
            background=json_data["background"],
        )
