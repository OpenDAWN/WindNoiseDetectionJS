CXX      = ../em++
CXXFLAGS = -Wall -ansi -g --emrun
CC       = ../emcc
CCFLAGS  = -g --emrun
OBJS     = src/main.o src/processInWindows.o src/DecisionTreeClass.o src/aweighting.o src/featureExtraction.o src/kiss_fft130/kiss_fft.o

windDet : $(OBJS)
	$(CXX) -o $@ $(OBJS)

OBJ/%.o : %.cpp
	$(CXX) -c $(CXXFLAGS) $<

OBJ/%.o : %.c
	$(CC) -c $(CCFLAGS) $<


clean:
	\rm $(OBJS)
