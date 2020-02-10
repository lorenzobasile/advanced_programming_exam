SRC = main.cpp
CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++14

EXE = $(SRC:.cpp=.x)

# eliminate default suffixes
.SUFFIXES:
SUFFIXES =

# just consider our own suffixes
.SUFFIXES: .cpp .x


all: $(EXE)


.PHONY: all

%.x: %.cpp

	$(CXX) $< -o $@ $(CXXFLAGS)


clean:
		rm -f $(EXE) *~

.PHONY: clean

main.x: iterator.hpp node.hpp bst.hpp
