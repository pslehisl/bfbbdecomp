#include <types.h>
#include "zMusic.h"
#include "../Core/x/xSnd.h"
#include "../Core/x/xMath.h"
#include "../Core/x/xString.h"
#include "zGlobals.h"
#include "zGameState.h"
#include "zScene.h"
#include <string.h>

extern zMusicTrackInfo sMusicTrack[2];
extern zVolumeInfo volume;
extern uint32 sMusicPaused;
extern int32 sMusicLastEnum[2];
extern float32 lbl_803CDD48; //0f by default.
extern float32 minDelay; //Value is defaulted at 0.001f.
extern uint32 sMusicSoundID[24][2];
extern zMusicSituation sMusicInfo[8];
extern float32 lbl_803CCA78;
extern float32 lbl_803CD118;
extern zMusicSituation* sMusicQueueData[2];
extern float32 sMusicTimer[2];

extern eGameMode gGameMode;
extern zGlobals globals;

extern char* zMusic_strings[];

// func_800A6E9C
#ifndef NON_MATCHING
#pragma GLOBAL_ASM("asm/Game/zMusic.s", "volume_reset__Fv")
// Float issue
#else
void volume_reset()
{
    volume.cur = lbl_803CCA78;
    volume.end = lbl_803CD118;
    volume.inc = lbl_803CCA78;
    memset(volume.adjusted, 0, sizeof(volume.adjusted));
}
#endif

// Reset both music tracks to their default volume.
void zMusicRefreshVolume()
{
    for (int32 i = 0; i < 2; i++)
    {
        zMusicTrackInfo* track = &sMusicTrack[i];
        if (track->snd_id != 0)
        {
            // Only reset volume if the sound ID is not blank.
            xSndSetVol(track->snd_id, volume.cur);
        }
    }
}

// func_800A6F50
#if 1
#pragma GLOBAL_ASM("asm/Game/zMusic.s", "zMusicInit__Fv")
#else

// Cannot figure out what the middle loop is supposed to be

void zMusicInit()
{
    sMusicPaused = 0;

    for (int i = 0; i < sizeof(sMusicTrack) / sizeof(sMusicTrack[0]); i++)
    {
        sMusicTrack[i].snd_id = 0;
        sMusicTrack[i].loop = 0;
        sMusicTrack[i].situation = 0;
    }

    for (int i = 0; i < 24; i++)
    {
        // uint32 arr[] = { xStrHash(zMusic_strings[i]), 1 };
        // *sMusicSoundID[i] = *arr;
        sMusicSoundID[i][0] = xStrHash(zMusic_strings[i]);
        sMusicSoundID[i][1] = 1;
    }

    for (int i = 0; i < sizeof(sMusicInfo) / sizeof(sMusicInfo[0]); i++)
    {
        sMusicInfo[i].elapsedTime = sMusicInfo[i].delay;
        sMusicInfo[i].count = 0;
    }
    volume_reset();
}
#endif

// WIP.
#ifndef NON_MATCHING
// func_800A7314
#pragma GLOBAL_ASM("asm/Game/zMusic.s", "getCurrLevelMusicEnum__Fv")
#else
// Correct, but won't work due to the switch case jump table (messes with offsets)
int32 getCurrLevelMusicEnum()
{
    int32 snd_enum;

    switch (zSceneGetLevelIndex())
    {
    case 0:
        snd_enum = 0;
        break;
    case 1:
        snd_enum = 1;
        break;
    case 2:
        snd_enum = 2;
        break;
    case 3:
        snd_enum = 3;
        break;
    case 4:
        snd_enum = 4;
        break;
    case 5:
        snd_enum = 5;
        break;
    case 6:
        snd_enum = 6;
        break;
    case 7:
        snd_enum = 0;
        break;
    case 8:
        snd_enum = 8;
        break;
    case 9:
        snd_enum = 9;
        break;
    case 10:
        snd_enum = 10;
        break;
    case 11:
        snd_enum = 11;
        break;
    case 12:
        snd_enum = 12;
        break;
    case 13:
        snd_enum = 2;
        break;
    case 14:
        snd_enum = 13;
        break;
    default:
        snd_enum = (xrand() % 23) + 1;
        if (24 <= snd_enum)
        {
            snd_enum--;
        }
        if (((snd_enum == 4) || (snd_enum == 7)) || (snd_enum == 8))
        {
            snd_enum = 5;
        }
        break;
    }

    return snd_enum;
}
#endif

// func_800A7414
#pragma GLOBAL_ASM("asm/Game/zMusic.s", "zMusicDo__Fi")
// int32 zMusicDo(int32 track)
// {
//     int32 snd_enum;
//     float32 vol;
//     float32 pitch;

//     // undefined4 uVar1;
//     // uint uVar2;
//     // uint32 uVar3;
//     // zMusicSituation* pzVar4;
//     // uint uVar5;
//     // undefined4 in_GQR0;
//     // double dVar6;
//     // undefined8 in_f31;
//     // double dVar7;
//     // undefined auStack8[8];

//     dVar7 = lbl_803CDD4C;
//     if (globals[1744] == '\0')
//     {
//         int32 snd_enum = xrand();
//         snd_enum = snd_enum % 0x18;
//         switch (sMusicQueueData[track]->situation)
//         {
//         case 0:
//             uVar2 = getCurrLevelMusicEnum();
//             break;
//         default:
//             snd_enum = xrand();
//             snd_enum = snd_enum % 0x18;
//             break;
//         case 2:
//             snd_enum = 1;
//             break;
//         case 3:
//         case 5:
//             snd_enum = sMusicQueueData[track]->music_enum;
//             break;
//         case 4:
//             break;
//         case 6:
//             snd_enum = sMusicQueueData[track]->music_enum;
//             break;
//         case 7:
//             snd_enum = sMusicLastEnum[0];
//         }
//         if (sMusicTrack[track].snd_id != 0)
//         {
//             xSndStop(sMusicTrack[track].snd_id);
//             sMusicTrack[track].snd_id = 0;
//         }
//         sMusicTrack[track].loop = sMusicSoundID[snd_enum][1];
//         dVar6 = (double)(float)@668;
//         if ((snd_enum == 9) && (*globals._8128_4_ == 0x4b463034))
//         {
//             dVar6 = (double)@799;
//             dVar7 = (double)(float)(dVar7 * (double)@800);
//         }
//         uVar5 = sMusicTrack[track].loop;
//         uVar3 = xSndPlay(dVar7, dVar6, (double)(float)@668, sMusicSoundID[snd_enum][0], 0xff,
//                          track << 0xb | (int)(-uVar5 | uVar5) >> 0x1f & 0x8000U | 0x10000 | 0x20000,
//                          0, 2);
//         sMusicTrack[track].snd_id = uVar3;
//         if (sMusicTrack[track].snd_id == 0)
//         {
//             uVar1 = 0;
//         }
//         else
//         {
//             sMusicQueueData[track] = sMusicQueueData[track];
//             sMusicTrack[track].assetID = sMusicSoundID[snd_enum][0];
//             sMusicTrack[track].lastVol = (float32)(float)dVar7;
//             if (sMusicQueueData[track])
//             {
//                 pzVar4->sndid = sMusicTrack[track].snd_id;
//                 sMusicQueueData[track]->elapsedTime = @668;
//                 sMusicQueueData[track]->count++;
//                 sMusicQueueData[track] = 0;
//             }
//             uVar1 = 1;
//             sMusicLastEnum[track] = snd_enum;
//         }
//     }
//     else
//     {
//         uVar1 = 0;
//     }
//     return uVar1;
// }

// func_800A7640
#ifndef NON_MATCHING
#pragma GLOBAL_ASM("asm/Game/zMusic.s", "zMusicNotify__Fi")
// Probably floating point memes idk
#else
void zMusicNotify(int32 situation)
{
    if (sMusicPaused)
    {
        return;
    }
    if (sMusicInfo[situation].countMax)
    {
        return;
    }
    if (sMusicInfo[situation].count >= sMusicInfo[situation].countMax)
    {
        return;
    }
    if (sMusicInfo[situation].delay > sMusicInfo[situation].elapsedTime)
    {
        return;
    }
    // zMusicSituation* s = &sMusicInfo[situation];
    sMusicQueueData[sMusicInfo[situation].track] = &sMusicInfo[situation];
    sMusicTimer[sMusicInfo[situation].track] = sMusicInfo[situation].punchDelay;
    sMusicQueueData[sMusicInfo[situation].track]->game_state = gGameMode == eGameMode_Game;
}
#endif

// func_800A76BC
#pragma GLOBAL_ASM("asm/Game/zMusic.s", "zMusicNotifyEvent__FPCfP5xBase")

// func_800A77B4
#pragma GLOBAL_ASM("asm/Game/zMusic.s", "zMusicUpdate__Ff")

// func_800A7924
#pragma GLOBAL_ASM("asm/Game/zMusic.s", "volume_update__Ff")

// Stop all tracks and set them to null.
void zMusicKill()
{
    for (int32 i = 0; i < 2; i++)
    {
        zMusicTrackInfo* track = &sMusicTrack[i];
        if (track->snd_id != 0)
        {
            xSndStop(track->snd_id);
            track->snd_id = 0;
            track->loop = 0;
            track->situation = NULL;
        }
    }
}

// Pause music by stopping any non-null tracks.
void zMusicPause()
{
    if (sMusicPaused == 0)
    {
        for (int32 i = 0; i < 2; i++)
        {
            zMusicTrackInfo* track = &sMusicTrack[i];
            if (track->snd_id != 0)
            {
                xSndStop(track->snd_id);
            }
        }
        sMusicPaused = 1;
    }
}

// WIP.
#if 1

// func_800A7B7C
#pragma GLOBAL_ASM("asm/Game/zMusic.s", "zMusicUnpause__Fi")

#else

// Only thing that doesn't compile correctly is the function call to xSndPlay, in which a bunch of stuff is in the wrong order it looks like.
void zMusicUnpause(int32 kill)
{
    if (sMusicPaused != 0)
    {
        for (int32 i = 0; i < 2; i++)
        {
            zMusicTrackInfo* track = &sMusicTrack[i];
            uint32 prioBase = 0x800 * i;
            if (track->snd_id != 0)
            {
                if (kill != 0)
                {
                    track->snd_id = 0;
                }
                else
                {
                    uint32 res =
                        xSndPlay(track->assetID, track->lastVol, lbl_803CDD48, 0xff,
                                 prioBase | (int)(-track->loop | track->loop) >> 0x1f & 0x8000U |
                                     0x10000 | 0x20000,
                                 0, SND_CAT_MUSIC, lbl_803CDD48);
                    track->snd_id = res;
                }
            }
        }
        sMusicPaused = 0;
    }
}

#endif

// WIP.
#if 1

// func_800A7C60
#pragma GLOBAL_ASM("asm/Game/zMusic.s", "zMusicSetVolume__Fff")

#else

// Not sure what's wrong with this one. Doesn't match in the slightest.
void zMusicSetVolume(float32 vol, float32 delay)
{
    if (delay <= minDelay)
    {
        volume.end = vol;
        volume.inc = vol - volume.cur;
        return;
    }
    volume.end = vol;
    volume.inc = (vol - volume.cur) / delay;
}

#endif

void zMusicReset()
{
    int32 currMusic;
    currMusic = getCurrLevelMusicEnum();
    if (sMusicLastEnum[0] != currMusic)
    {
        zMusicNotify(0);
    }
}