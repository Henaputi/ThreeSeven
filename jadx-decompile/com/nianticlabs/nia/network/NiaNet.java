package com.nianticlabs.nia.network;

import java.nio.ByteBuffer;

public class NiaNet {
    private static final int CHUNK_SIZE = 32768;
    static ThreadLocal<ByteBuffer> readBuffer;
    private static final ThreadLocal<byte[]> threadChunk;

    static {
        threadChunk = new ThreadLocal<byte[]>() {
            protected byte[] initialValue() {
                return new byte[NiaNet.CHUNK_SIZE];
            }
        };
        readBuffer = new ThreadLocal<ByteBuffer>() {
            protected ByteBuffer initialValue() {
                return ByteBuffer.allocateDirect(NiaNet.CHUNK_SIZE);
            }
        };
    }

    private NiaNet() {
    }
}
