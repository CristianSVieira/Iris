import { useEvent } from 'expo';
import { StatusBar } from 'expo-status-bar';
import { useVideoPlayer, VideoView } from 'expo-video';
import React from 'react';
import { useRef } from 'react';
import { Image, StyleSheet, Text, View, Button } from 'react-native';

const videoSource = require('./background.mp4');

export default function App() {

  const player = useVideoPlayer(videoSource, player => {
    player.loop = true;
    player.play();
  });

  const { isPlaying } = useEvent(player, 'playingChange', { isPlaying: player.playing });

  return (
    <View style={styles.container}>
      <Text style={styles.text}>LSVilantino!</Text>
      <StatusBar style="light" />

      <Image
        style={styles.reactimagem}
        source={{
          uri: 'https://reactnative.dev/img/tiny_logo.png',
        }}
      />

      <VideoView
        style={styles.samplevideo}
        player={player}
        fullscreenOptions={{ enable: true }}
        allowsPictureInPicture
      />
      <View style={styles.controlsContainer}>
        <Button
          title={isPlaying ? 'Pause' : 'Play'}
          onPress={() => {
            if (isPlaying) {
              player.pause();
            } else {
              player.play();
            }
          }}
        />
      </View>

    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#410000ff',
    alignItems: 'center',
    justifyContent: 'center',
  },

  text: {
    color: 'white'
  },

  reactimagem: {
    width: 250,
    height: 250
  },

  samplevideo: {
    width: 350,
    height: 275,
  },

  controlsContainer: {
    padding: 10,
  },
});
