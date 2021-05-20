import os

if __name__ == '__main__':
    print("중복 이미지 제거기 v1.0.2")
    select_directory = input("검사할 디렉토리 입력 : ")

    if os.path.isdir(select_directory) == False:
        print(select_directory, "경로가 존재하지 않습니다")
        exit(-1)

    file_list = os.listdir(select_directory)
    extention_sets = {}
    delete_count = 0

    print()
    print(select_directory, "이미지 검사 중......")
    print("총 %d개 항목" % len(file_list))
    print()

    for file in file_list:
        file_path = os.path.join(select_directory, file)

        if os.path.isfile(file_path) == False:
            continue

        extention = file.split('.')[-1].lower()
        if (extention in extention_sets) == False:
            extention_sets[extention] = set()

        file_size = os.path.getsize(file_path)
        if file_size in extention_sets[extention]:
            delete_count += 1
            os.remove(file_path)
        else:
            extention_sets[extention].add(file_size)
    
    print("삭제 완료")
    print("파일 %d개 삭제됨" % delete_count)