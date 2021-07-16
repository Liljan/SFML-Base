#include <SFML\Graphics.hpp>
#include <SFML\Window\Event.hpp>

int main()
{
	const std::string title("My SFML Project");

	sf::RenderWindow window; // (sf::VideoMode(1920, 1080), title, sf::Style::Default);

	sf::Clock timer;

	//while(window.isOpen())
	//{
	//	const float dt = timer.restart().asSeconds();

	//	// Update objects here

	//	sf::Event event;

	//	while(window.pollEvent(event))
	//	{
	//		switch (event.type)
	//		{
	//		case sf::Event::EventType::Closed:
	//			window.close();
	//			break;

	//		default:
	//			break;
	//		}
	//	}

	//	window.clear(sf::Color());
	//	// Draw stuff here!
	//	window.display();

	//	//window.setTitle(title + std::string("\tFPS: ") + std::to_string(1.0f / dt));
	//}

	return 0;
}