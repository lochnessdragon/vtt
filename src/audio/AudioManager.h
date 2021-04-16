#pragma once

#include "Audio.h"
#include "../debug/Log.h"

namespace VTT {
	class Buffer;
	class Source;

	class AudioManager {
	private:
		static bool INSTANCE;
		ALCdevice* device;
		ALCcontext* context;

		std::vector<Buffer> buffers;
		std::vector<Source> sources;
	public:
		AudioManager();
		~AudioManager();

		Buffer loadVorbisFile(const char* filename);
		Source createSource(Buffer &buffer);

		static ALenum checkALError();
		static ALCenum checkALCError(ALCdevice* device);
	};
}