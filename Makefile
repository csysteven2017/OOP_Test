CXX = g++
CXXFLAGS = -std=c++11 -Wall -Iinc

TARGET = Lab07

SRCS = main.cpp src/Cylinder.cpp
OBJS = $(SRCS:.cpp=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^
  
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@
  
clean:
	rm -f $(TARGET) $(OBJS)
