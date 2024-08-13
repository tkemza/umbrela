#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define CONFIG_FILE "config.txt"
#define MAX_LINE_LENGTH 256

typedef struct {
    char key[50];
    char value[50];
} Config;

void loadConfig(const char *filename, Config *config, int *numConfigs) {
    FILE *file = fopen(filename, "r");
    if (!file) {
        perror("Error opening config file");
        exit(EXIT_FAILURE);
    }

    char line[MAX_LINE_LENGTH];
    *numConfigs = 0;

    while (fgets(line, sizeof(line), file) && *numConfigs < 50) {
        // Remove newline character
        line[strcspn(line, "\n")] = '\0';

        // Split line into key and value
        char *delimiter = strchr(line, '=');
        if (delimiter) {
            *delimiter = '\0';
            strcpy(config[*numConfigs].key, line);
            strcpy(config[*numConfigs].value, delimiter + 1);
            (*numConfigs)++;
        }
    }

    fclose(file);
}

const char* getConfigValue(const Config *config, int numConfigs, const char *key) {
    for (int i = 0; i < numConfigs; i++) {
        if (strcmp(config[i].key, key) == 0) {
            return config[i].value;
        }
    }
    return NULL;
}

int main() {
    Config config[50];
    int numConfigs;

    loadConfig(CONFIG_FILE, config, &numConfigs);

    printf("Configuration Loaded:\n");
    for (int i = 0; i < numConfigs; i++) {
        printf("%s = %s\n", config[i].key, config[i].value);
    }

    // Example usage
    const char *exampleValue = getConfigValue(config, numConfigs, "exampleKey");
    if (exampleValue) {
        printf("Value for 'exampleKey': %s\n", exampleValue);
    } else {
        printf("Key 'exampleKey' not found.\n");
    }

    return 0;
}
